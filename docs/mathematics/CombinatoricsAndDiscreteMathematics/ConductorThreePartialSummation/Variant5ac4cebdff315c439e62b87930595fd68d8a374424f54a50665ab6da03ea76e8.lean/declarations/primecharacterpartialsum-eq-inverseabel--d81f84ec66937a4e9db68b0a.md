# primeCharacterPartialSum_eq_inverseAbel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dadb2dc2-1964-9c40-7179-2eabcdf5d02c",
  "kind": "theorem",
  "lexical_name": "primeCharacterPartialSum_eq_inverseAbel",
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
  "slug": "primecharacterpartialsum-eq-inverseabel--d81f84ec66937a4e9db68b0a",
  "source": {
    "blob": "1d29ae7058e0dba58d20850e4c3ecf69d3095a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81f84ec66937a4e9db68b0a1d8d99883497af077f02fe1fefc58cc826001b7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dadb2dc2-1964-9c40-7179-2eabcdf5d02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCharacterPartialSum_eq_inverseAbel
    {N : ℕ} (hN : 2 ≤ N) :
    primeCharacterPartialSum N =
      conductorThreeTheta N * reciprocalLog N +
        ∑ n ∈ Finset.Ico 2 N,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hN
  exact primeCharacterPartialSum_eq_inverseAbel_add_two k

/-- The inverse identity stated directly with the repository's integer-valued
prime sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d29ae7058e0dba58d20850e4c3ecf69d3095a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
