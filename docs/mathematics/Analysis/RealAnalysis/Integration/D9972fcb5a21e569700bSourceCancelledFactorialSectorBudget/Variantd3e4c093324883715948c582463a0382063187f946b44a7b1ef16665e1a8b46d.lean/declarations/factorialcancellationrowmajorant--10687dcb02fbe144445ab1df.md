# factorialCancellationRowMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e958dd4dee7060abb7dd09011ff0914a140455d603832b2b50656fbeb4c529f",
  "kind": "def",
  "lexical_name": "factorialCancellationRowMajorant",
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
  "slug": "factorialcancellationrowmajorant--10687dcb02fbe144445ab1df",
  "source": {
    "blob": "5151c0495da9d42f4f411316efe89fd103d5e5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10687dcb02fbe144445ab1df95b2bb85340a43d04fe52c6e43be9687af03a5be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e958dd4dee7060abb7dd09011ff0914a140455d603832b2b50656fbeb4c529f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def factorialCancellationRowMajorant (d x : ℝ) : ℝ :=
  |factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)| *
    (5 * (Real.log x) ^ 2 + 20 * |Real.log x|)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5151c0495da9d42f4f411316efe89fd103d5e5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
