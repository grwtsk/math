# LocallyFiniteOrder.orderMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b25a98e050864e47464ea46c570c0631ecac4cbe042bb81db29df23c6db536fc",
  "kind": "def",
  "lexical_name": "LocallyFiniteOrder.orderMonoidWithZeroHom",
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
  "slug": "locallyfiniteorder-ordermonoidwithzerohom--c8e5da065c1f0837aa335f03",
  "source": {
    "blob": "88a9f363c8e0480bef9910c7d6fdd25237ed626c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8e5da065c1f0837aa335f0398ff43d57cd1fc6387f028f747e7874b4de69976",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b25a98e050864e47464ea46c570c0631ecac4cbe042bb81db29df23c6db536fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyFiniteOrder.orderMonoidWithZeroHom (G : Type*) [LinearOrderedCommGroupWithZero G]
    [LocallyFiniteOrder Gˣ] : G →*₀o ℤᵐ⁰ where
  __ := (WithZero.map' (orderMonoidHom Gˣ)).comp
    OrderMonoidIso.withZeroUnits.symm.toMonoidWithZeroHom
  monotone' a b h := by have := (orderMonoidHom Gˣ).monotone'; aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant490874d6c74dd2b869f9ebad80c8ae3a9a5c92d837ddded79071692d3589dab7.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88a9f363c8e0480bef9910c7d6fdd25237ed626c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
