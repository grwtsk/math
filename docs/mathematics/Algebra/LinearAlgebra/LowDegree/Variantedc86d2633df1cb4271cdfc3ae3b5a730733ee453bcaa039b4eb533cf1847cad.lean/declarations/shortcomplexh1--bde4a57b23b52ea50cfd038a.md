# shortComplexH1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:504f221f768cc40920b12d4fa6a3af1f22f4e9f50cdc2264082ac39fd9f2ce12",
  "kind": "def",
  "lexical_name": "shortComplexH1",
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
  "slug": "shortcomplexh1--bde4a57b23b52ea50cfd038a",
  "source": {
    "blob": "bbbc305e7aa9b49ef24cf28f574ec3b8a74cf92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bde4a57b23b52ea50cfd038a8ef1353caa8fbc775072b089acc2306291233f97",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:504f221f768cc40920b12d4fa6a3af1f22f4e9f50cdc2264082ac39fd9f2ce12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shortComplexH1 : ShortComplex (ModuleCat k) :=
  moduleCatMk (dZero A) (dOne A) (dOne_comp_dZero A)

/-- The short complex `Fun(G, A) --dOne--> Fun(G × G, A) --dTwo--> Fun(G × G × G, A)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LowDegree/Variantedc86d2633df1cb4271cdfc3ae3b5a730733ee453bcaa039b4eb533cf1847cad.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc305e7aa9b49ef24cf28f574ec3b8a74cf92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
