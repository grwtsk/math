# chebyshevTheta_linear_upper_from_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f372d2a-a6c1-a4a8-094e-37ca0a720ea9",
  "kind": "theorem",
  "lexical_name": "chebyshevTheta_linear_upper_from_dyadic",
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
  "slug": "chebyshevtheta-linear-upper-from-dyadic--d98c7a9e13d9cee49e712d1a",
  "source": {
    "blob": "4e3a3c5c9734c81cdcac3b95b94bf72d2f5dfc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Variant99e7902d4e7cfd656dcf71336d1274fcdd3460ba27025b34f338b9cd875c10bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d98c7a9e13d9cee49e712d1aa78f89a6b4a2d46c1d345e31ad80fa21c3f54ada",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Variant99e7902d4e7cfd656dcf71336d1274fcdd3460ba27025b34f338b9cd875c10bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f372d2a-a6c1-a4a8-094e-37ca0a720ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevTheta_linear_upper_from_dyadic
    (hdiff : ∀ n, chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4) :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N := by
  exact
    dyadic_upper_from_doubling_difference
      chebyshevTheta
      chebyshevTheta_zero
      chebyshevTheta_nonneg
      chebyshevTheta_mono
      (Real.log 4)
      (Real.log_nonneg (by norm_num))
      (fun n => by
        simpa [mul_comm] using hdiff n)

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Variant99e7902d4e7cfd656dcf71336d1274fcdd3460ba27025b34f338b9cd875c10bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChebyshevDyadicUpper/Variant99e7902d4e7cfd656dcf71336d1274fcdd3460ba27025b34f338b9cd875c10bb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e3a3c5c9734c81cdcac3b95b94bf72d2f5dfc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
