# centeredTwistedPsi_inv_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2389d742-4e08-1669-585f-5529f58fd71d",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsi_inv_norm",
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
  "slug": "centeredtwistedpsi-inv-norm--7c43527369779aa168eb0059",
  "source": {
    "blob": "92d46bc9693c20348389e09d0bfa213be95de2c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CenteredPsi/Varianteffbf5975af181e49e862d4acf8a7072f41622c322ba17a64a2a1c7f4c0cf8c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c43527369779aa168eb0059de93fc002fff33b8dfa966858ea8be688714114c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CenteredPsi/Varianteffbf5975af181e49e862d4acf8a7072f41622c322ba17a64a2a1c7f4c0cf8c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2389d742-4e08-1669-585f-5529f58fd71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsi_inv_norm
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    ‖centeredTwistedPsi chi⁻¹ x‖ = ‖centeredTwistedPsi chi x‖ := by
  rw [centeredTwistedPsi_inv, norm_star]

/-- At modulus one, the twisted sum is mathlib's ordinary Chebyshev
`psi` function. -/
@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CenteredPsi/Varianteffbf5975af181e49e862d4acf8a7072f41622c322ba17a64a2a1c7f4c0cf8c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CenteredPsi/Varianteffbf5975af181e49e862d4acf8a7072f41622c322ba17a64a2a1c7f4c0cf8c4.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92d46bc9693c20348389e09d0bfa213be95de2c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
