# inner_toCLM_conjTranspose_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a949221-af44-2db3-cfda-825a755e7011",
  "kind": "lemma",
  "lexical_name": "inner_toCLM_conjTranspose_right",
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
  "slug": "inner-toclm-conjtranspose-right--7b49071eed0f0db74a30b00c",
  "source": {
    "blob": "be1a38097998dad5c98fe948b6b723db534af057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 583,
    "path": "GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b49071eed0f0db74a30b00ce1e2f00ac9114ec799a73c8a080a7455ded2e92f",
  "verification": {
    "reference": "docs/verification/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a949221-af44-2db3-cfda-825a755e7011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_toCLM_conjTranspose_right {M : CStarMatrix m n A} {v : C⋆ᵐᵒᵈ(A, m → A)}
    {w : C⋆ᵐᵒᵈ(A, n → A)} : ⟪v, toCLM Mᴴ w⟫_A = ⟪toCLM M v, w⟫_A := by
  apply Eq.symm
  simpa using inner_toCLM_conjTranspose_left (M := Mᴴ) (v := v) (w := w)

/-- The operator norm on `CStarMatrix m n A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1a38097998dad5c98fe948b6b723db534af057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
