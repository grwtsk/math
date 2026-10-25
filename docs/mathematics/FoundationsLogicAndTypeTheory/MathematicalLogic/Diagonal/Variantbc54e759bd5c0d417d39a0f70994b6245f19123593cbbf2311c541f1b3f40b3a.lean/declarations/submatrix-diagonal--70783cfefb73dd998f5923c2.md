# submatrix_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06818126-1934-2676-6082-775bb55b60b9",
  "kind": "theorem",
  "lexical_name": "submatrix_diagonal",
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
  "slug": "submatrix-diagonal--70783cfefb73dd998f5923c2",
  "source": {
    "blob": "9066d1912c5ff900f6fabe914cfa9e1281a3359e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variantbc54e759bd5c0d417d39a0f70994b6245f19123593cbbf2311c541f1b3f40b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70783cfefb73dd998f5923c22d7e58e435f05abc160fe1431b744f73d1af247b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variantbc54e759bd5c0d417d39a0f70994b6245f19123593cbbf2311c541f1b3f40b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06818126-1934-2676-6082-775bb55b60b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_diagonal [Zero α] [DecidableEq m] [DecidableEq l] (d : m → α) (e : l → m)
    (he : Function.Injective e) : (diagonal d).submatrix e e = diagonal (d ∘ e) :=
  ext fun i j => by
    rw [submatrix_apply]
    by_cases h : i = j
    · rw [h, diagonal_apply_eq, diagonal_apply_eq, Function.comp_apply]
    · rw [diagonal_apply_ne _ h, diagonal_apply_ne _ (he.ne h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variantbc54e759bd5c0d417d39a0f70994b6245f19123593cbbf2311c541f1b3f40b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diagonal/Variantbc54e759bd5c0d417d39a0f70994b6245f19123593cbbf2311c541f1b3f40b3a.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9066d1912c5ff900f6fabe914cfa9e1281a3359e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
