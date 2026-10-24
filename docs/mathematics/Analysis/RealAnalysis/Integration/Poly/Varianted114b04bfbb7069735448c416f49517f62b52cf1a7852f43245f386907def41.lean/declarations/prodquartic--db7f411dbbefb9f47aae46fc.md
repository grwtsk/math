# prodQuartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f78fea30d08c4a001e5d8cbb0ec05b19a401e1f6d98dbe8ea3bd13e903067965",
  "kind": "def",
  "lexical_name": "prodQuartic",
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
  "slug": "prodquartic--db7f411dbbefb9f47aae46fc",
  "source": {
    "blob": "f702f4975646ede439df49e223b8e83266f8dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db7f411dbbefb9f47aae46fcfa9a1f97e186f9e792cac0db1ee73596323824c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f78fea30d08c4a001e5d8cbb0ec05b19a401e1f6d98dbe8ea3bd13e903067965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodQuartic : List ℝ :=
  [0, 518783/600000, -2348507/600000, 1727507/525000, 10412663/1050000, -80937331/3150000,
    937111/30000, -283158439/11812500, 1279111/112500, -18867821/3375000, 15910471/4725000,
    -427006369/310078125, 2144671/2953125, -3202160069/10232578125, 2561099/19490625,
    -7317191036/133023515625, 2480296796/133023515625, -591808741/71628046875,
    38839601/19003359375, -22023206368/20352597890625, 353129072/2261399765625,
    -512137232/4070519578125, 1004576/264319453125, -710912/57010078125,
    -350177024/142468185234375, 0, -14464/15962821875, 0, -34816/399070546875]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f702f4975646ede439df49e223b8e83266f8dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
