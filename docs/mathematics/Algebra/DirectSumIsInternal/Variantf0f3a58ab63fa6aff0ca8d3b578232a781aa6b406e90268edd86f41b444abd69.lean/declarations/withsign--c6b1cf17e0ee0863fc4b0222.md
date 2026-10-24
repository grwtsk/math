# withSign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02344e6e13fe7dab0a1e5671605a9d6f006faa981d3d9955be8dcd2bb27c05cd",
  "kind": "def",
  "lexical_name": "withSign",
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
  "slug": "withsign--c6b1cf17e0ee0863fc4b0222",
  "source": {
    "blob": "0c6bc56f41615652319d554eecd3821635159f19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b1cf17e0ee0863fc4b0222f9da13980dbd344faa0e9f332a80032efe55a7b7",
  "verification": {
    "reference": "docs/verification/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02344e6e13fe7dab0a1e5671605a9d6f006faa981d3d9955be8dcd2bb27c05cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withSign (i : ℤˣ) : Submodule ℕ ℤ :=
  AddSubmonoid.toNatSubmodule <|
    show AddSubmonoid ℤ from
      { carrier := {z | 0 ≤ i • z}
        zero_mem' := show 0 ≤ i • (0 : ℤ) from (smul_zero _).ge
        add_mem' := fun {x y} (hx : 0 ≤ i • x) (hy : 0 ≤ i • y) =>
          show 0 ≤ i • (x + y) by
            rw [smul_add]
            exact add_nonneg hx hy }
#align counterexample.with_sign Counterexample.withSign

local notation "ℤ≥0" => withSign 1

local notation "ℤ≤0" => withSign (-1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectSumIsInternal/Variantf0f3a58ab63fa6aff0ca8d3b578232a781aa6b406e90268edd86f41b444abd69.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c6bc56f41615652319d554eecd3821635159f19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
