# omittedOnsetAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8248bb21cf4e055044353549fce1f813d602b976a22d8d590f2374e36189ab98",
  "kind": "def",
  "lexical_name": "omittedOnsetAtom",
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
  "slug": "omittedonsetatom--179c9b4faf5e88cdc36cea86",
  "source": {
    "blob": "75ed918bec5e5dde79e578ddec347813dca1d32d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 183,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:179c9b4faf5e88cdc36cea86f6d2b56366612050325bd76c00e4976bb871b9e8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8248bb21cf4e055044353549fce1f813d602b976a22d8d590f2374e36189ab98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def omittedOnsetAtom (t : ℝ) (p : Nat.Primes) (k : ℕ) : ℝ :=
  if t < ((k+2 : ℕ) : ℝ)*Real.log (p.val : ℝ) then
    Real.log (p.val : ℝ)/(p.val : ℝ)^(k+2) else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ed918bec5e5dde79e578ddec347813dca1d32d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
