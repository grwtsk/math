# NormalMono.lift'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:116daadaca99ce4887a0b9ec2837d9891885146d3e502a0afb7bd66557be8794",
  "kind": "def",
  "lexical_name": "NormalMono.lift'",
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
  "slug": "normalmono-lift--0bc5cfaf4b4b9f0f8857142e",
  "source": {
    "blob": "3172bf8d21ca81b316933cbed4f0d6652152b2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bc5cfaf4b4b9f0f8857142ea05679b9c01f71ace0999bd7b9fa6614016b0976",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:116daadaca99ce4887a0b9ec2837d9891885146d3e502a0afb7bd66557be8794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormalMono.lift' {W : C} (f : X ⟶ Y) [hf :NormalMono f] (k : W ⟶ Y) (h : k ≫ hf.g = 0) :
    { l : W ⟶ X // l ≫ f = k } :=
  KernelFork.IsLimit.lift' NormalMono.isLimit _ h
#align category_theory.normal_mono.lift' CategoryTheory.NormalMono.lift'

/-- The second leg of a pullback cone is a normal monomorphism if the right component is too.

See also `pullback.sndOfMono` for the basic monomorphism version, and
`normalOfIsPullbackFstOfNormal` for the flipped version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3172bf8d21ca81b316933cbed4f0d6652152b2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
