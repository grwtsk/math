# nonempty_linearIndependent_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59a00d6878acd6e45d11ceb04fb04b67aaec08a6fd41dd566a6260fcefa61e3c",
  "kind": "instance",
  "lexical_name": "nonempty_linearIndependent_set",
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
  "slug": "nonempty-linearindependent-set--ed55d9fe5161fdd17e5ed32d",
  "source": {
    "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed55d9fe5161fdd17e5ed32d1602128a724a9e9c0f10e6486b98cb270aa2ea96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59a00d6878acd6e45d11ceb04fb04b67aaec08a6fd41dd566a6260fcefa61e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_linearIndependent_set : Nonempty {s : Set M // LinearIndepOn R id s} :=
  ⟨⟨∅, linearIndepOn_empty _ _⟩⟩

end

namespace LinearIndependent
variable [Semiring R] [AddCommMonoid M] [Module R M]

variable [Nontrivial R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be686d7a739311091392ea7d3b164df50a53b1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
