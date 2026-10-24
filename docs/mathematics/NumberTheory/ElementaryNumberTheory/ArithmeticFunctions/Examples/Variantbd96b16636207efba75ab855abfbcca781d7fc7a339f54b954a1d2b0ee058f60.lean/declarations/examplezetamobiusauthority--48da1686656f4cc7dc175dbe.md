# exampleZetaMobiusAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7f624a8d7b0c246f1965b68f702304fc34934b38dc202e58c67ebfa2c51b4e3",
  "kind": "def",
  "lexical_name": "exampleZetaMobiusAuthority",
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
  "slug": "examplezetamobiusauthority--48da1686656f4cc7dc175dbe",
  "source": {
    "blob": "8d2013317ce2251b6279d29fdf574de188279169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48da1686656f4cc7dc175dbe1b55c55962d32c3610ee0ae24dcd693bc267f2ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7f624a8d7b0c246f1965b68f702304fc34934b38dc202e58c67ebfa2c51b4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleZetaMobiusAuthority : ZetaMobiusIdentityAuthority where
  domain := exampleHalfPlane
  zeta := exampleZeta
  mobiusSeries := exampleMobiusSeries
  reGreaterThanOne := True
  reGreaterThanOneProof := trivial
  absoluteConvergence := True
  absoluteConvergenceProof := trivial
  cauchyProductSound := True
  cauchyProductProof := trivial
  zetaMobiusIdentitySound := True
  zetaMobiusIdentityProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Examples/Variantbd96b16636207efba75ab855abfbcca781d7fc7a339f54b954a1d2b0ee058f60.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2013317ce2251b6279d29fdf574de188279169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
