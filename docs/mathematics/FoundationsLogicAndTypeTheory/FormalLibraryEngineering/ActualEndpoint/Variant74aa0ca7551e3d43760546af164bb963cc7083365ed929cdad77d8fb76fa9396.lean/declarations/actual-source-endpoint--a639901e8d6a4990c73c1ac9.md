# actual_source_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9044fa60-9542-8ec3-43d4-747a171e1e45",
  "kind": "theorem",
  "lexical_name": "actual_source_endpoint",
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
  "slug": "actual-source-endpoint--a639901e8d6a4990c73c1ac9",
  "source": {
    "blob": "beb87593bfeea3000b56af2c328ee0318382748d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variant74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a639901e8d6a4990c73c1ac95097070406792ede3e8add6c6ca75805801fd95b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variant74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9044fa60-9542-8ec3-43d4-747a171e1e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_endpoint (A u : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (hupper : u ≤ 2*A) :
    normalizedTest explicitSecondDerivative A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hx : A-u ∈ Set.Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [Set.indicator_of_mem hx]
  exact normalizedInterior_endpoint A u hA

end CommonMeanEndpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variant74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpoint/Variant74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb87593bfeea3000b56af2c328ee0318382748d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
