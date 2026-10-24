# powQuotSuccInclusion_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1c24127-9236-558e-92d4-e800899b9cdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df272af9-a59a-ea48-4862-60b47a205f5a",
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
  "slug": "powquotsuccinclusion-injective--aa79d064003d82ed75ed3cbe",
  "source": {
    "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 319,
    "path": "GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa79d064003d82ed75ed3cbe309824e35507ed92c18896b9c0adaa00e0550ce0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df272af9-a59a-ea48-4862-60b47a205f5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–328.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8bc311279ec33de014306a9b3912335ce2fbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
