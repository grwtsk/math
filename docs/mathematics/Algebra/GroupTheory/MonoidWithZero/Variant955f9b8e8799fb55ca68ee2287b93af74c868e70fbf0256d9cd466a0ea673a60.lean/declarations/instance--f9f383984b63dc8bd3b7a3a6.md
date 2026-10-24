# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb50e58c4d8187f3b5982800700cb05f894bac2a0dde510caeb2c66df935f327",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f9f383984b63dc8bd3b7a3a6",
  "source": {
    "blob": "1b4756e799fef1101bb14ff46e6488c76aa19e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9f383984b63dc8bd3b7a3a63b065b308611967831d879939fcce6f66f4a0890",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb50e58c4d8187f3b5982800700cb05f894bac2a0dde510caeb2c66df935f327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FunLike (α →*₀o β) α β where
  coe f := f.toFun
  coe_injective f g h := by
    obtain ⟨⟨⟨_, _⟩⟩, _⟩ := f
    obtain ⟨⟨⟨_, _⟩⟩, _⟩ := g
    congr

initialize_simps_projections OrderMonoidWithZeroHom (toFun → apply, -toMonoidWithZeroHom)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4756e799fef1101bb14ff46e6488c76aa19e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
