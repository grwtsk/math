# activities_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40b33f7f-9174-e6de-2227-3fb9c265e03a",
  "kind": "theorem",
  "lexical_name": "activities_nonempty",
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
  "slug": "activities-nonempty--e5b4d47b3d2c0f8058401077",
  "source": {
    "blob": "a06f25b10cce3c8305f6bd655dc7457000874341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 317,
    "path": "GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b4d47b3d2c0f80584010775a51081673cb1e5663b0e2ff6f88e81df48ac010",
  "verification": {
    "reference": "docs/verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40b33f7f-9174-e6de-2227-3fb9c265e03a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem activities_nonempty {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) : (activities L).Nonempty := by
  classical
  rw [activities, Finset.image_nonempty]
  refine ⟨basisBit ⟨0, hn⟩, ?_⟩
  simp [basisBit_ne_zero]

/--
Minimum nonzero input/output activity. At width zero the defining set is empty,
so the branch number is defined by convention to be zero. This is a
deterministic one-layer activity guarantee, not a SAC or multi-round avalanche
theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06f25b10cce3c8305f6bd655dc7457000874341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
