# submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c87a3f002e0aa9c43eb6e1b6162489a985ffb08c473c7e4d4d0adcf43c15361",
  "kind": "def",
  "lexical_name": "submodule",
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
  "slug": "submodule--9b8929a1bfb3877e6fe962f3",
  "source": {
    "blob": "32df0034933fcd744a1f5a82f971da098f694c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 268,
    "path": "GRWTSK/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b8929a1bfb3877e6fe962f3ac529f2172ca95a604c7d3bba071b09e4acba6cc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c87a3f002e0aa9c43eb6e1b6162489a985ffb08c473c7e4d4d0adcf43c15361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submodule : Submodule R (∀ n : ℕ, M ⧸ (I ^ n • ⊤ : Submodule R M)) where
  carrier := { f | ∀ {m n} (hmn : m ≤ n), AdicCompletion.transitionMap I M hmn (f n) = f m }
  zero_mem' hmn := by rw [Pi.zero_apply, Pi.zero_apply, map_zero]
  add_mem' hf hg m n hmn := by
    rw [Pi.add_apply, Pi.add_apply, map_add, hf hmn, hg hmn]
  smul_mem' c f hf m n hmn := by rw [Pi.smul_apply, Pi.smul_apply, map_smul, hf hmn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32df0034933fcd744a1f5a82f971da098f694c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
