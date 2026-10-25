# sum_casesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:349f89eb-094c-fa4f-9db6-aa558b1dc9c3",
  "kind": "theorem",
  "lexical_name": "sum_casesOn",
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
  "slug": "sum-caseson--aadd9d811128a0347db9ec5d",
  "source": {
    "blob": "3066fc5f4bc4029ac10780c189c3cdfa82aefa1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aadd9d811128a0347db9ec5d3a525ca673dfcd16c621c458b8edc870c1625749",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:349f89eb-094c-fa4f-9db6-aa558b1dc9c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem sum_casesOn {f : α → Sum β γ} {g : α → β →. σ} {h : α → γ →. σ} (hf : Computable f)
    (hg : Partrec₂ g) (hh : Partrec₂ h) : @Partrec _ σ _ _ fun a => Sum.casesOn (f a) (g a) (h a) :=
  option_some_iff.1 <|
    (cond (sum_casesOn hf (const true).to₂ (const false).to₂)
          (sum_casesOn_left hf (option_some_iff.2 hg).to₂ (const Option.none).to₂)
          (sum_casesOn_right hf (const Option.none).to₂ (option_some_iff.2 hh).to₂)).of_eq
      fun a => by cases f a <;> simp only [Bool.cond_true, Bool.cond_false]
#align partrec.sum_cases Partrec.sum_casesOn

end Partrec

/-- A computable predicate is one whose indicator function is computable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3066fc5f4bc4029ac10780c189c3cdfa82aefa1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
