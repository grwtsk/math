# ax_grothendieck_zeroLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc0642d-ea1f-4b03-e739-015ee0a50b51",
  "kind": "theorem",
  "lexical_name": "ax_grothendieck_zeroLocus",
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
  "slug": "ax-grothendieck-zerolocus--bacb7c6d625fc2659c215e19",
  "source": {
    "blob": "d026e6f7b6cb1eae2235db811c7d012d9add6ec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bacb7c6d625fc2659c215e19ade18e83568272627c6459ce3eabcff2f652540c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc0642d-ea1f-4b03-e739-015ee0a50b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ax_grothendieck_zeroLocus
    (I : Ideal (MvPolynomial ι K))
    (p : ι → MvPolynomial ι K) :
    let S := zeroLocus I
    S.MapsTo (fun v i => eval v (p i)) S →
    S.InjOn (fun v i => eval v (p i)) →
    S.SurjOn (fun v i => eval v (p i)) S := by
  letI := compatibleRingOfRing K
  intro S
  obtain ⟨s, rfl⟩ : I.FG := IsNoetherian.noetherian I
  exact ax_grothendieck_of_definable S (mvPolynomial_zeroLocus_definable s) p

/-- A special case of the **Ax-Grothendieck** theorem

Any injective polynomial map `K^n → K^n` is also surjective if `K` is an
algberaically closed field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d026e6f7b6cb1eae2235db811c7d012d9add6ec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
