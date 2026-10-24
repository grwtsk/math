# _root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant7cae874284d0f392f432fa76c18abf676c953e23907019410099bbd03fddb7ac.ProbabilityTheory.IsSFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62f2f727b34536657a431b4148612e8d42aebd5c98060d26e6e32661c1880b50",
  "kind": "class",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant7cae874284d0f392f432fa76c18abf676c953e23907019410099bbd03fddb7ac.ProbabilityTheory.IsSFiniteKernel",
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
  "slug": "root-grwtsk-analysis-measuretheory-kernel-variant7cae874284d0f392f432fa7--46c6159e4e094faf402cc29f",
  "source": {
    "blob": "bedc5652730e71303fc74552972a510612d3f68c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 356,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant5eead512c105d93feca8ea1d0d653c804d1e0177591a04ab7e8157435186404f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46c6159e4e094faf402cc29f994625bc1af7239b7889b4079bb3b1b943f2b6b3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant5eead512c105d93feca8ea1d0d653c804d1e0177591a04ab7e8157435186404f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62f2f727b34536657a431b4148612e8d42aebd5c98060d26e6e32661c1880b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.GRWTSK.Analysis.MeasureTheory.Kernel.Variant7cae874284d0f392f432fa76c18abf676c953e23907019410099bbd03fddb7ac.ProbabilityTheory.IsSFiniteKernel (κ : Kernel α β) : Prop where
  tsum_finite : ∃ κs : ℕ → Kernel α β, (∀ n, IsFiniteKernel (κs n)) ∧ κ = Kernel.sum κs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant5eead512c105d93feca8ea1d0d653c804d1e0177591a04ab7e8157435186404f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant5eead512c105d93feca8ea1d0d653c804d1e0177591a04ab7e8157435186404f.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedc5652730e71303fc74552972a510612d3f68c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
