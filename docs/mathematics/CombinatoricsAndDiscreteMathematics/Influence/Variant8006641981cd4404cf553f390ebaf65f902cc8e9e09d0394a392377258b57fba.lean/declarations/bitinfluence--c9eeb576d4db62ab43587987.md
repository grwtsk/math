# bitInfluence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c394dd89db0567f6790506911ec837d0df28545101466a4586a5ff3d4f299b5c",
  "kind": "def",
  "lexical_name": "bitInfluence",
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
  "slug": "bitinfluence--c9eeb576d4db62ab43587987",
  "source": {
    "blob": "d783ead032dca7af15a8ee16cef775c208944162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9eeb576d4db62ab43587987401833556f3dc2849405b5dc07ba5ac527e00e27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c394dd89db0567f6790506911ec837d0df28545101466a4586a5ff3d4f299b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bitInfluence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width) : ℝ :=
  (Finset.univ : Finset (Bitfield width)).sup'
    (allBitfieldsNonempty width)
    (fun field =>
      |observable field -
        observable (flipAt field coordinate)|)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d783ead032dca7af15a8ee16cef775c208944162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
