# completely_multiplicative_is_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dde52c13-47bc-ad03-a5e2-3ba190744237",
  "kind": "theorem",
  "lexical_name": "completely_multiplicative_is_multiplicative",
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
  "slug": "completely-multiplicative-is-multiplicative--7d6a60cf79217dc8d14b427e",
  "source": {
    "blob": "bc61d0a9b7a96f1cb9daadb25ca239f50102a363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6a60cf79217dc8d14b427e7c48cbcaedf827cfe6ade8d217a8770f795b0223",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dde52c13-47bc-ad03-a5e2-3ba190744237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completely_multiplicative_is_multiplicative
    [Mul R] [One R]
    {f : ArithFn R}
    (hf : IsCompletelyMultiplicative f) :
    IsMultiplicative f := by
  constructor
  · exact hf.1
  · intro a b _hab
    exact hf.2 a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc61d0a9b7a96f1cb9daadb25ca239f50102a363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
