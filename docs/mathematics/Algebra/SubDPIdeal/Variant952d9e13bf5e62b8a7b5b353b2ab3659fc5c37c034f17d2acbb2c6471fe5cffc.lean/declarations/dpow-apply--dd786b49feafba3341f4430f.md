# dpow_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cae7c5bb-fd8a-234b-f7b5-f2c7c0828c8d",
  "kind": "theorem",
  "lexical_name": "dpow_apply'",
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
  "slug": "dpow-apply--dd786b49feafba3341f4430f",
  "source": {
    "blob": "d48853bce2d1873c7253498403051f12d1c18c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 572,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd786b49feafba3341f4430fdcdb8e49d5c1b87b80b4e03c4039454ab390fab6",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae7c5bb-fd8a-234b-f7b5-f2c7c0828c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_apply' (hIf : IsSubDPIdeal hI (RingHom.ker f ⊓ I)) {n : ℕ} {a : A} (ha : a ∈ I) :
    dpow hI f n (f a) = f (hI.dpow n a) := by
  classical
  simp only [dpow, Function.extend_def]
  have h : ∃ (a_1 : I), f ↑a_1 = f a := by use ⟨a, ha⟩
  rw [dite_eq_left h, ← sub_eq_zero, ← map_sub, ← RingHom.mem_ker]
  apply (hI.isSubDPIdeal_inf_iff.mp hIf) (Submodule.coe_mem _) ha
  rw [RingHom.mem_ker, map_sub, sub_eq_zero, h.choose_spec]

open Ideal

/-- When `f.ker ⊓ I` is a sub-dp-ideal of `I`, this is the induced divided power structure on
  the ideal `I.map f` of the target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant952d9e13bf5e62b8a7b5b353b2ab3659fc5c37c034f17d2acbb2c6471fe5cffc.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48853bce2d1873c7253498403051f12d1c18c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
