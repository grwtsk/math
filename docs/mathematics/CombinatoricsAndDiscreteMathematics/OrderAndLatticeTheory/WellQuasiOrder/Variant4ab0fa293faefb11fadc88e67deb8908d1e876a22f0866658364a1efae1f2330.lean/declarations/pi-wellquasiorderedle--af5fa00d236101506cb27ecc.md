# Pi.wellQuasiOrderedLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524d691a9fb31a79fa96743ff12813795124bec5b7cfeb0adf66af26d099e1ca",
  "kind": "instance",
  "lexical_name": "Pi.wellQuasiOrderedLE",
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
  "slug": "pi-wellquasiorderedle--af5fa00d236101506cb27ecc",
  "source": {
    "blob": "42940579c57840d95df50e0c1d5dac335a0f5b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5fa00d236101506cb27ecc5e96e81a8c155c595855c18b1b4cd25399823fe1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524d691a9fb31a79fa96743ff12813795124bec5b7cfeb0adf66af26d099e1ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.wellQuasiOrderedLE {ι : Type*} {α : ι → Type*} [∀ i, Preorder (α i)]
    [h : ∀ i, WellQuasiOrderedLE (α i)] [Finite ι] : WellQuasiOrderedLE (∀ i, α i) :=
  ⟨WellQuasiOrdered.pi fun i => (h i).wqo⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42940579c57840d95df50e0c1d5dac335a0f5b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
