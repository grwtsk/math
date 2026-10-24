# perfectMatchingEquivCubicRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60fde5253536ebc476f48498d9831acf7abe82da2ca8d88023fad018f4458f62",
  "kind": "def",
  "lexical_name": "perfectMatchingEquivCubicRoots",
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
  "slug": "perfectmatchingequivcubicroots--c72b15591f091a64eae62b16",
  "source": {
    "blob": "5eaa1c7ce2137163efeb298f6297899c6698b0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 34,
    "path": "GRWTSK/Algebra/QuarticResolventRootEquiv.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c72b15591f091a64eae62b16703001e437fa34deb52f5719d4ca504f7fda1fa9",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticResolventRootEquiv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60fde5253536ebc476f48498d9831acf7abe82da2ca8d88023fad018f4458f62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def perfectMatchingEquivCubicRoots
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    PerfectMatching ≃ CubicRootCarrier (L := L) A B C₀ D :=
  Equiv.ofBijective
    (fun m : PerfectMatching =>
      (⟨complementaryAdjacency e.r m,
        matching_value_is_resolvent_root p A B C₀ D hp hs hm e m⟩ :
          CubicRootCarrier (L := L) A B C₀ D))
    ⟨(fun a b h =>
        matching_value_injective_of_separable p hsep e (congrArg Subtype.val h)),
      (by
        intro x
        have hroot : x.1 ∈ Set.range (complementaryAdjacency e.r) := by
          rw [← mapped_resolvent_rootSet_eq_matching_range p A B C₀ D hp hs hm e]
          exact x.2
        obtain ⟨m, hm'⟩ := hroot
        refine ⟨m, ?_⟩
        apply Subtype.ext
        exact hm')⟩

/-- Actual automorphisms act on the root subtype through their action on L.
The proof uses the established quartic matching covariance rather than
assuming a classification of the Galois group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticResolventRootEquiv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticResolventRootEquiv.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eaa1c7ce2137163efeb298f6297899c6698b0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
