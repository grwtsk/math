# exprJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:100ecd714bb80871635ef3bb9c1dbe97f8f4da14fa6d829be1766edde302f268",
  "kind": "def",
  "lexical_name": "exprJson",
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
  "slug": "exprjson--241db20e63161a1554def4cc",
  "source": {
    "blob": "63bf890d8f3f0a0f43b651d49097895079d1e1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:241db20e63161a1554def4ccdcae36ff5494e0db26822aaf8760bdc64f71708f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:100ecd714bb80871635ef3bb9c1dbe97f8f4da14fa6d829be1766edde302f268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exprJson : Expr → Json
  | .bvar i => arr ["bvar", .str (toString i)]
  | .fvar i => arr ["unresolved-free", nameJson i.name]
  | .mvar i => arr ["unresolved-meta", nameJson i.name]
  | .sort u => arr ["sort", levelJson u]
  | .const n us => arr ["const", nameJson n, .arr (us.toArray.map levelJson)]
  | .app f a => arr ["app", exprJson f, exprJson a]
  | .lam n t b i => arr ["lam", nameJson n, exprJson t, exprJson b, binderJson i]
  | .forallE n t b i => arr ["forall", nameJson n, exprJson t, exprJson b, binderJson i]
  | .letE n t v b d => arr ["let", nameJson n, exprJson t, exprJson v, exprJson b, .bool d]
  | .lit (.natVal n) => arr ["nat", .str (toString n)]
  | .lit (.strVal s) => arr ["string", .str s]
  | .mdata _ e => exprJson e
  | .proj s i e => arr ["proj", nameJson s, .str (toString i), exprJson e]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63bf890d8f3f0a0f43b651d49097895079d1e1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
