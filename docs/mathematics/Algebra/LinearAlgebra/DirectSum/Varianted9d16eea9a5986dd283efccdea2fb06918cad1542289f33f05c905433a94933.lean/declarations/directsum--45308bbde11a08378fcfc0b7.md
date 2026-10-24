# directSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f87196d4dff940a75087105fb4606894537d111298bbc0e7c9caa633ed32ba64",
  "kind": "def",
  "lexical_name": "directSum",
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
  "slug": "directsum--45308bbde11a08378fcfc0b7",
  "source": {
    "blob": "0c757dc87f03a1775a2db264b2c5a01a4703198a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45308bbde11a08378fcfc0b74981046b037916438a4ed8f85e7c654e1fc81804",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f87196d4dff940a75087105fb4606894537d111298bbc0e7c9caa633ed32ba64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def directSum : Relations A where
  G := Σ i, (relations i).G
  R := Σ i, (relations i).R
  relation := fun ⟨i, r⟩ ↦ Finsupp.embDomain (Function.Embedding.sigmaMk
      (β := fun i ↦ (relations i).G) i) ((relations i).relation r)

namespace Solution

variable {relations}
variable {N : Type v} [AddCommGroup N] [Module A N]

/-- Given an `A`-module `N` and a family `relations : ι → Relations A`,
the data of a solution of `Relations.directSum relations` in `N`
is equivalent to the data of a family of solutions of `relations i` in `N`
for all `i`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c757dc87f03a1775a2db264b2c5a01a4703198a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
