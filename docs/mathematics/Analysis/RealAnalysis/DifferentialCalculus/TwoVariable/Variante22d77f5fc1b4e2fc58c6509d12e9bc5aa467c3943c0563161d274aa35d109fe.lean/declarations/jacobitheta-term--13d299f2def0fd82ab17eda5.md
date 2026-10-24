# jacobiTheta₂'_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0be324b67dafa0699882ae0d5ec9305ae2ea612e27a04c1a6c24cfff3db46daf",
  "kind": "def",
  "lexical_name": "jacobiTheta₂'_term",
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
  "slug": "jacobitheta-term--13d299f2def0fd82ab17eda5",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13d299f2def0fd82ab17eda5f3f51785e416fa9d5ea2b88f65a7a3d40af9e722",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0be324b67dafa0699882ae0d5ec9305ae2ea612e27a04c1a6c24cfff3db46daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jacobiTheta₂'_term (n : ℤ) (z τ : ℂ) := 2 * π * I * n * jacobiTheta₂_term n z τ

end term_defs

section term_bounds
/-!
## Bounds for the summands

We show that the sums of the three functions `jacobiTheta₂_term`, `jacobiTheta₂'_term` and
`jacobiTheta₂_term_fderiv` are locally uniformly convergent in the domain `0 < im τ`, and diverge
everywhere else.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
