# compatibleJets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42bf8259e2a243025d1a10aec03d6868d77f055647df0ba7cfcc34592c6d5467",
  "kind": "def",
  "lexical_name": "compatibleJets",
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
  "slug": "compatiblejets--4c4839b1885447a42cafd8ed",
  "source": {
    "blob": "211c963917049ac0e992864408ad1b56ff11b1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c4839b1885447a42cafd8edab3c5c6cebc27c6e81cfd07966a38c9a384df0b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42bf8259e2a243025d1a10aec03d6868d77f055647df0ba7cfcc34592c6d5467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compatibleJets (a b r : R) : Subalgebra R (∀ N : ℕ, Jet a b r N) where
  carrier := {u | ∀ M N (hMN : M ≤ N), truncate a b r M N hMN (u N) = u M}
  mul_mem' := by
    intro u v hu hv M N hMN
    change truncate a b r M N hMN (u N * v N) = u M * v M
    rw [map_mul, hu M N hMN, hv M N hMN]
  add_mem' := by
    intro u v hu hv M N hMN
    change truncate a b r M N hMN (u N + v N) = u M + v M
    rw [map_add, hu M N hMN, hv M N hMN]
  zero_mem' := by
    intro M N hMN
    exact map_zero (truncate a b r M N hMN)
  one_mem' := by
    intro M N hMN
    exact map_one (truncate a b r M N hMN)
  algebraMap_mem' c := by
    intro M N hMN
    exact truncate_scalar a b r M N hMN c

/-- Explicit inverse-limit model of completion along the selected section.
This is not an alias for an already-proved AdicCompletion comparison theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211c963917049ac0e992864408ad1b56ff11b1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
