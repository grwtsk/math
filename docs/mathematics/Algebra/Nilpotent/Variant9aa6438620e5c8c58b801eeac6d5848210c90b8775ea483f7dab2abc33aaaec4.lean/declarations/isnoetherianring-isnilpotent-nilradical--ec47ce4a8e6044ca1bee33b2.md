# IsNoetherianRing.isNilpotent_nilradical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ceaa61e-95b2-8646-8895-41b6b30f326d",
  "kind": "theorem",
  "lexical_name": "IsNoetherianRing.isNilpotent_nilradical",
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
  "slug": "isnoetherianring-isnilpotent-nilradical--ec47ce4a8e6044ca1bee33b2",
  "source": {
    "blob": "d3032ff735b11202545b8b6fee607b671e3d8b74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 29,
    "path": "GRWTSK/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec47ce4a8e6044ca1bee33b273bf1c9d653ad4959e10eac08312fcd81c859d67",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ceaa61e-95b2-8646-8895-41b6b30f326d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNoetherianRing.isNilpotent_nilradical (R : Type*) [CommSemiring R] [IsNoetherianRing R] :
    IsNilpotent (nilradical R) := by
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg (⊥ : Ideal R) (IsNoetherian.noetherian _)
  exact ⟨n, eq_bot_iff.mpr hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3032ff735b11202545b8b6fee607b671e3d8b74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
