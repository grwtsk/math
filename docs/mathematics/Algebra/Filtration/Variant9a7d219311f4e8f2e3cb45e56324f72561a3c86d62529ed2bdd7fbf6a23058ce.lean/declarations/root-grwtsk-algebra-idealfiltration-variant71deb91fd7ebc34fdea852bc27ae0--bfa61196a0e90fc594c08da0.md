# _root_.GRWTSK.Algebra.IdealFiltration.Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.Ideal.stableFiltration_stable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e99536be-b96c-38a5-a632-e323eb07dd9f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IdealFiltration.Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.Ideal.stableFiltration_stable",
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
  "slug": "root-grwtsk-algebra-idealfiltration-variant71deb91fd7ebc34fdea852bc27ae0--bfa61196a0e90fc594c08da0",
  "source": {
    "blob": "61cc2a9c801a1b9db6db34860d0abbf0c5b40465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa61196a0e90fc594c08da04f796b1214d485b9855dd3c832fceef7e30c653d",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e99536be-b96c-38a5-a632-e323eb07dd9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IdealFiltration.Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.Ideal.stableFiltration_stable (I : Ideal R) (N : Submodule R M) :
    (I.stableFiltration N).Stable := by
  use 0
  intro n _
  dsimp
  rw [add_comm, pow_add, mul_smul, pow_one]

variable {F F'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant9a7d219311f4e8f2e3cb45e56324f72561a3c86d62529ed2bdd7fbf6a23058ce.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61cc2a9c801a1b9db6db34860d0abbf0c5b40465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
