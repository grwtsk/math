# decidableForallOfDecidableSSubsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7de48348f4fb075735514f2b3f4e735ed8b8d9b37eb3adf4c6f9a93324b8ab4b",
  "kind": "instance",
  "lexical_name": "decidableForallOfDecidableSSubsets",
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
  "slug": "decidableforallofdecidablessubsets--74892a0afb1d230cd000a800",
  "source": {
    "blob": "a01dc445830e58bbd825bdbe73e8ade66c19a8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74892a0afb1d230cd000a80049d5cef612f565c4b0a14189def7cf736a14d815",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7de48348f4fb075735514f2b3f4e735ed8b8d9b37eb3adf4c6f9a93324b8ab4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableForallOfDecidableSSubsets {s : Finset α} {p : ∀ (t) (_ : t ⊂ s), Prop}
    [∀ (t) (h : t ⊂ s), Decidable (p t h)] : Decidable (∀ t h, p t h) :=
  decidable_of_iff (∀ (t) (h : t ∈ s.ssubsets), p t (mem_ssubsets.1 h))
    ⟨fun h t hs => h t (mem_ssubsets.2 hs), fun h _ _ => h _ _⟩
#align finset.decidable_forall_of_decidable_ssubsets Finset.decidableForallOfDecidableSSubsets

/-- A version of `Finset.decidableExistsOfDecidableSSubsets` with a non-dependent `p`.
Typeclass inference cannot find `hu` here, so this is not an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01dc445830e58bbd825bdbe73e8ade66c19a8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
