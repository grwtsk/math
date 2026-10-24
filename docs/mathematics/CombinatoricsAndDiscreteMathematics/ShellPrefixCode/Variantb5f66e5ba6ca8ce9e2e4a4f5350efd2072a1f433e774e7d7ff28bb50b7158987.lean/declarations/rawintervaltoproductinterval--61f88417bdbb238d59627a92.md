# rawIntervalToProductInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08b5d83cccc3d7d4754f3f3ae6d06007a3a2f9c4eca08886db4a0d4bc46565bd",
  "kind": "def",
  "lexical_name": "rawIntervalToProductInterval",
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
  "slug": "rawintervaltoproductinterval--61f88417bdbb238d59627a92",
  "source": {
    "blob": "bffec46a5ac6d504d203a975f171fe7b1b6f0881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f88417bdbb238d59627a92499591d2696b0e45a25989904e2251461ce7ce65",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08b5d83cccc3d7d4754f3f3ae6d06007a3a2f9c4eca08886db4a0d4bc46565bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rawIntervalToProductInterval {N q : ℕ}
    (I : RawProductDyadicInterval)
    (hscale : I.scale ≤ q)
    (hlower : 2 ^ q ≤ I.lower)
    (hupper : I.upper ≤ typeIIProductShellUpper N q) :
    TypeIIProductDyadicInterval N q := by
  have hblock : I.block < 2 * N + 1 := by
    have hblock_le_lower : I.block ≤ I.lower := by
      simp only [RawProductDyadicInterval.lower,
        RawProductDyadicInterval.width]
      exact Nat.le_mul_of_pos_right I.block (pow_pos (by decide) _)
    have hlower_le_upper : I.lower ≤ I.upper :=
      Nat.le_of_lt I.lower_lt_upper
    have hupperScale : I.upper ≤ 2 * N :=
      hupper.trans (min_le_right _ _)
    omega
  exact ⟨(⟨I.scale, Nat.lt_succ_iff.mpr hscale⟩,
      ⟨I.block, hblock⟩), ⟨hlower, hupper⟩⟩

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffec46a5ac6d504d203a975f171fe7b1b6f0881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
