# homotopyPInftyToId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:121a593f3c656e37052279f3650f5a4919627c174261becf49a5b468066a6dcb",
  "kind": "def",
  "lexical_name": "homotopyPInftyToId",
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
  "slug": "homotopypinftytoid--53aa7838ff981b64b4aceb06",
  "source": {
    "blob": "5711d06b38f5c90bbb5342e8de4abc6b7de0c4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53aa7838ff981b64b4aceb0601cb8fe24b630d84bc9631d8c0403d3219c7ed6c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:121a593f3c656e37052279f3650f5a4919627c174261becf49a5b468066a6dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyPInftyToId : Homotopy (PInfty : K[X] ⟶ _) (𝟙 _) where
  hom i j := (homotopyPToId X (j + 1)).hom i j
  zero i j hij := Homotopy.zero _ i j hij
  comm n := by
    rcases n with _|n
    · simpa only [Homotopy.dNext_zero_chainComplex, Homotopy.prevD_chainComplex,
        PInfty_f, P_f_0_eq, zero_add] using (homotopyPToId X 2).comm 0
    · simpa only [Homotopy.dNext_succ_chainComplex, Homotopy.prevD_chainComplex,
          HomologicalComplex.id_f, PInfty_f, ← P_is_eventually_constant (le_refl <| n + 1),
          homotopyPToId_eventually_constant X (Nat.lt_add_one (Nat.succ n)),
          Homotopy.dNext_succ_chainComplex, Homotopy.prevD_chainComplex]
        using (homotopyPToId X (n + 2)).comm (n + 1)


/-- The inclusion of the Moore complex in the alternating face map complex
is a homotopy equivalence -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variantd2c34dc2a5d5c9da983a5eb836fdd89d5976327b4c4ea5138049eef28b79b497.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5711d06b38f5c90bbb5342e8de4abc6b7de0c4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
