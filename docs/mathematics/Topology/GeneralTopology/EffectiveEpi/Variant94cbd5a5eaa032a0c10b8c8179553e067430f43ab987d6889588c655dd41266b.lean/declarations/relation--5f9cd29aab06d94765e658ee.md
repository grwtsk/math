# relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:742f100f1a1fb6e721ee61614667483a9b0a8d8283b22cc5bea059f27e27bff3",
  "kind": "def",
  "lexical_name": "relation",
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
  "slug": "relation--5f9cd29aab06d94765e658ee",
  "source": {
    "blob": "41c3b0ac7417612a2c302f773c4053ea7b95fd44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f9cd29aab06d94765e658ee2b588f62de0966a41ef033d38d588e951dcc124a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:742f100f1a1fb6e721ee61614667483a9b0a8d8283b22cc5bea059f27e27bff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relation : Setoid (finiteCoproduct X) where
  r a b := ∃ (Z : Profinite) (z : Z) (fst : Z ⟶ X a.fst) (snd : Z ⟶ X b.fst),
    fst ≫ π _ = snd ≫ π _ ∧ fst z = a.snd ∧ snd z = b.snd
  iseqv := by
    constructor
    · rintro ⟨a, x⟩
      exact ⟨X a, x, 𝟙 _, 𝟙 _, by simp, rfl, rfl⟩
    · rintro ⟨a, x⟩ ⟨b, y⟩ ⟨Z, z, fst, snd, w, h1, h2⟩
      exact ⟨Z, z, snd, fst, w.symm, h2, h1⟩
    · rintro ⟨a, x⟩ ⟨b, y⟩ ⟨z, c⟩ ⟨Z, z, fstZ, sndZ, hZ, hZ1, hZ2⟩
      rintro ⟨W, w, fstW, sndW, hW, hW1, hW2⟩
      refine ⟨pullback sndZ fstW, ⟨⟨z, w⟩, by dsimp; rw [hZ2, hW1]⟩,
        pullback.fst _ _ ≫ fstZ, pullback.snd _ _ ≫ sndW, ?_, hZ1, hW2⟩
      dsimp only at *
      simp only [Category.assoc, hZ, ← hW]
      apply ContinuousMap.ext
      rintro ⟨⟨u, v⟩, h⟩
      change π b (sndZ u) = π b (fstW v)
      rw [h]

/--
Implementation: The map from the quotient of `relation π` to `B`, which will eventually
become the function underlying an isomorphism, provided that `X a → B` is an effective epi family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41c3b0ac7417612a2c302f773c4053ea7b95fd44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
