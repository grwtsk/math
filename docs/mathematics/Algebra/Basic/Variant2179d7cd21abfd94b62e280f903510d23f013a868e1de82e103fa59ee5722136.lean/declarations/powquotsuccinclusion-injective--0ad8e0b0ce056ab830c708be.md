# powQuotSuccInclusion_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ad87cc1-36ee-3e18-0a0d-9bc2bd6e404d",
  "kind": "theorem",
  "lexical_name": "powQuotSuccInclusion_injective",
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
  "slug": "powquotsuccinclusion-injective--0ad8e0b0ce056ab830c708be",
  "source": {
    "blob": "83b7ec0fd879c386ae3d6e7aedb74acd0b899622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 327,
    "path": "GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad8e0b0ce056ab830c708be906d6eba1bb6bbd1a0b27a00809deceb97f0c96c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad87cc1-36ee-3e18-0a0d-9bc2bd6e404d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powQuotSuccInclusion_injective (i : ℕ) :
    Function.Injective (powQuotSuccInclusion p P i) := by
  rintro ⟨_, _⟩ ⟨_, _⟩ h
  rwa [Subtype.ext_iff] at h ⊢

/-- `S ⧸ P` embeds into the quotient by `P^(i+1) ⧸ P^e` as a subspace of `P^i ⧸ P^e`.
See `quotientToQuotientRangePowQuotSucc` for this as a linear map,
and `quotientRangePowQuotSuccInclusionEquiv` for this as a linear equivalence.
-/
@[deprecated "Use results of RingTheory.RamificationInertia.Basic" (since := "2026-07-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b7ec0fd879c386ae3d6e7aedb74acd0b899622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
