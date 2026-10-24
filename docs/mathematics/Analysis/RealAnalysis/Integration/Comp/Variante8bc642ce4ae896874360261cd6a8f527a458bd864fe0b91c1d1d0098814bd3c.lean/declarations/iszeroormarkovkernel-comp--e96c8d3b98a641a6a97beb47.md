# IsZeroOrMarkovKernel.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df3bf83e367cb7d63f6b93d2be3135e746ed6c059b14a263422db48efc0b2ba6",
  "kind": "instance",
  "lexical_name": "IsZeroOrMarkovKernel.comp",
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
  "slug": "iszeroormarkovkernel-comp--e96c8d3b98a641a6a97beb47",
  "source": {
    "blob": "025864081208b5c41e5f5475ce9127b2e728ecfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e96c8d3b98a641a6a97beb47be7abd2dd119a6192d8ede827849502b9ffc3892",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df3bf83e367cb7d63f6b93d2be3135e746ed6c059b14a263422db48efc0b2ba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsZeroOrMarkovKernel.comp (κ : Kernel α β) [IsZeroOrMarkovKernel κ]
    (η : Kernel β γ) [IsZeroOrMarkovKernel η] : IsZeroOrMarkovKernel (η ∘ₖ κ) := by
  obtain rfl | _ := eq_zero_or_isMarkovKernel κ <;> obtain rfl | _ := eq_zero_or_isMarkovKernel η
  all_goals simpa using by infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025864081208b5c41e5f5475ce9127b2e728ecfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
