# _root_.GRWTSK.Algebra.CentroidHom.Variantbd1622805559ed4a8521f22be81d993fcd5864be7e0eff090359c80d0cded500.NonUnitalNonAssocSemiring.mem_center_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73c26ddc-2b5d-16dc-5e49-9bb693bb1e7b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.CentroidHom.Variantbd1622805559ed4a8521f22be81d993fcd5864be7e0eff090359c80d0cded500.NonUnitalNonAssocSemiring.mem_center_iff",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "root-grwtsk-algebra-centroidhom-variantbd1622805559ed4a8521f22be81d993fc--f38bfd84e3a66c45079a9481",
  "source": {
    "blob": "d491e8aacdf8b85c8f59a81d6f2a63c2e4f690eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 492,
    "path": "GRWTSK/Algebra/CentroidHom/Variant9a757b2bbda4708fb73f7b164417a5ceca996a23b33a6ef2edebb06c19c8b227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38bfd84e3a66c45079a94819564dc40a9666500711a45cf3f88d7e0d89ca541",
  "verification": {
    "reference": "docs/verification/Algebra/CentroidHom/Variant9a757b2bbda4708fb73f7b164417a5ceca996a23b33a6ef2edebb06c19c8b227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73c26ddc-2b5d-16dc-5e49-9bb693bb1e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.CentroidHom.Variantbd1622805559ed4a8521f22be81d993fcd5864be7e0eff090359c80d0cded500.NonUnitalNonAssocSemiring.mem_center_iff (a : α) :
    a ∈ NonUnitalSubsemiring.center α ↔ R a = L a ∧ (L a) ∈ RingHom.rangeS (toEndRingHom α) := by
  constructor
  · exact fun ha ↦ ⟨AddMonoidHom.ext <| fun _ => (IsMulCentral.comm ha _).symm,
      ⟨centerToCentroid ⟨a, ha⟩, rfl⟩⟩
  · rintro ⟨hc, ⟨T, hT⟩⟩
    have e1 (d : α) : T d = a * d := congr($hT d)
    have e2 (d : α) : T d = d * a := congr($(hT.trans hc.symm) d)
    constructor
    case comm => exact (congr($hc.symm ·))
    case left_assoc => simpa [e1] using (map_mul_right T · ·)
    case mid_assoc => exact fun b c ↦ by simpa [e1 c, e2 b] using
      (map_mul_right T b c).symm.trans <| map_mul_left T b c
    case right_assoc => simpa [e2] using (map_mul_left T · ·)

end NonUnitalNonAssocSemiring

section NonUnitalNonAssocCommSemiring

variable [NonUnitalNonAssocCommSemiring α]

/-
Left and right multiplication coincide as α is commutative
-/
local notation "L" => AddMonoid.End.mulLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CentroidHom/Variant9a757b2bbda4708fb73f7b164417a5ceca996a23b33a6ef2edebb06c19c8b227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CentroidHom/Variant9a757b2bbda4708fb73f7b164417a5ceca996a23b33a6ef2edebb06c19c8b227.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d491e8aacdf8b85c8f59a81d6f2a63c2e4f690eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
