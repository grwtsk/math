# limitConePtAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:053e21ecc366755d49e6f3dbb03b97e770bd7785d733f8bb4d0f8da0d11231ed",
  "kind": "def",
  "lexical_name": "limitConePtAux",
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
  "slug": "limitconeptaux--c4ed244f800db9b38991d9d4",
  "source": {
    "blob": "a6322586fa154d701fdcf57475c75f0974925b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4ed244f800db9b38991d9d4090be3e313a9f152e5c43823a138a26448d8d91d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:053e21ecc366755d49e6f3dbb03b97e770bd7785d733f8bb4d0f8da0d11231ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConePtAux : Subgroup (Π j : J, F.obj j) where
  carrier := {x | ∀ ⦃i j : J⦄ (π : i ⟶ j), F.map π (x i) = x j}
  mul_mem' hx hy _ _ π := by simp only [Pi.mul_apply, map_mul, hx π, hy π]
  one_mem' := by simp only [Set.mem_setOf_eq, Pi.one_apply, map_one, implies_true]
  inv_mem' h _ _ π := by simp only [Pi.inv_apply, map_inv, h π]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6322586fa154d701fdcf57475c75f0974925b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
