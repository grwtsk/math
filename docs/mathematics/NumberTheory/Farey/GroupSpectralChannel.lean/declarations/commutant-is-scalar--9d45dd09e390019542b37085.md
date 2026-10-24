# commutant_is_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16fd66c7-f7e3-f430-8b22-b7ed3f25d2cf",
  "kind": "theorem",
  "lexical_name": "commutant_is_scalar",
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
  "slug": "commutant-is-scalar--9d45dd09e390019542b37085",
  "source": {
    "blob": "cef7a890716a02491d2a0fe64e67e41fa2024cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d45dd09e390019542b37085aff015051cca2a04afe04e80ba8527d06f81541a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/GroupSpectralChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16fd66c7-f7e3-f430-8b22-b7ed3f25d2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutant_is_scalar (P : MatC)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P) :
    P = (P 0 0) • (1 : MatC) := by
  have hb : P 0 1 = 0 := by
    have h := congrArg (fun M : MatC => M 0 0) hL
    norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    linear_combination h
  have hd : P 1 1 = P 0 0 := by
    have h := congrArg (fun M : MatC => M 1 0) hL
    norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    linear_combination h
  have hc : P 1 0 = 0 := by
    have h := congrArg (fun M : MatC => M 0 0) hR
    norm_num [rightShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    exact h
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.smul_apply, hb, hc, hd]

/-- No nontrivial idempotent can be a spectral channel invariant under
BOTH native Farey generators. Enlarged or block-return representations are
not covered by this obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/GroupSpectralChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef7a890716a02491d2a0fe64e67e41fa2024cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
