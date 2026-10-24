# _root_.NonUnitalNonAssocSemiring.mem_center_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80f3ca326a6800ccc7757eeb407bfa6ad46fde4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2577143e-8813-6c95-ea40-aad405b59dd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea39723e-bd9a-f7ec-5e42-0b3f38ebe4b7",
  "kind": "lemma",
  "lexical_name": "_root_.NonUnitalNonAssocSemiring.mem_center_iff",
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
  "slug": "root-nonunitalnonassocsemiring-mem-center-iff--83ce3574c98a54eacab13ff7",
  "source": {
    "blob": "80f3ca326a6800ccc7757eeb407bfa6ad46fde4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 488,
    "path": "GRWTSK/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83ce3574c98a54eacab13ff70a600487378500f2d57b7f6f7edabecad0668489",
  "verification": {
    "reference": "docs/verification/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea39723e-bd9a-f7ec-5e42-0b3f38ebe4b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.NonUnitalNonAssocSemiring.mem_center_iff (a : α) :
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

[Verification target and public status](../../../../../verification/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80f3ca326a6800ccc7757eeb407bfa6ad46fde4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
