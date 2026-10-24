# _root_.ProbabilityTheory.IsSFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a83f320319ed7513c20f6987171a6a866fadabc447456415ce2764deba989730",
  "kind": "class",
  "lexical_name": "_root_.ProbabilityTheory.IsSFiniteKernel",
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
  "slug": "root-probabilitytheory-issfinitekernel--76611f3f88df4f616e371967",
  "source": {
    "blob": "a208ebf528d3b8e2d7e908a61a7bfebaf69b2726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 297,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76611f3f88df4f616e3719675474d8647a66a66c36f8983a2625f10dcc3b522e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a83f320319ed7513c20f6987171a6a866fadabc447456415ce2764deba989730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.ProbabilityTheory.IsSFiniteKernel (κ : Kernel α β) : Prop where
  tsum_finite : ∃ κs : ℕ → Kernel α β, (∀ n, IsFiniteKernel (κs n)) ∧ κ = Kernel.sum κs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant986a83a089e8c754bd0d44ff345d5f35a8d46794946733aacbe73a11541f0ab1.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a208ebf528d3b8e2d7e908a61a7bfebaf69b2726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
