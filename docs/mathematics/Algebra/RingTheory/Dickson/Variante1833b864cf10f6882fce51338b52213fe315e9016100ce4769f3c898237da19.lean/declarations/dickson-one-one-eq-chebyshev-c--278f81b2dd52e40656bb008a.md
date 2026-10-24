# dickson_one_one_eq_chebyshev_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a77d5610-62b3-67cf-28fd-fa26ec160c0c",
  "kind": "theorem",
  "lexical_name": "dickson_one_one_eq_chebyshev_C",
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
  "slug": "dickson-one-one-eq-chebyshev-c--278f81b2dd52e40656bb008a",
  "source": {
    "blob": "a692a28a355cd9ff7fb44372b05cdc999f3c1523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:278f81b2dd52e40656bb008ad5b2607eb76d4d180cb701a6537868da205f860d",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a77d5610-62b3-67cf-28fd-fa26ec160c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dickson_one_one_eq_chebyshev_C : ∀ n, dickson 1 (1 : R) n = Chebyshev.C R n
  | 0 => by
    simp only [Chebyshev.C_zero, mul_one, one_comp, dickson_zero]
    norm_num
  | 1 => by
    rw [dickson_one, Nat.cast_one, Chebyshev.C_one]
  | n + 2 => by
    rw [dickson_add_two, C_1, Nat.cast_add, Nat.cast_two, Chebyshev.C_add_two,
      dickson_one_one_eq_chebyshev_C (n + 1), dickson_one_one_eq_chebyshev_C n]
    push_cast
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variante1833b864cf10f6882fce51338b52213fe315e9016100ce4769f3c898237da19.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a692a28a355cd9ff7fb44372b05cdc999f3c1523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
