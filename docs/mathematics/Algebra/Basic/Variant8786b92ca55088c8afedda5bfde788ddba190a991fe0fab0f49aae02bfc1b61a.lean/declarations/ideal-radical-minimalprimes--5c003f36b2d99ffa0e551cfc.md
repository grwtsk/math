# Ideal.radical_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:befa9e23-4a72-71e0-e62d-37d757cc8514",
  "kind": "theorem",
  "lexical_name": "Ideal.radical_minimalPrimes",
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
  "slug": "ideal-radical-minimalprimes--5c003f36b2d99ffa0e551cfc",
  "source": {
    "blob": "600f9c9264bc1399f2419260d8ef47408d853f19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c003f36b2d99ffa0e551cfca1573935e732d4a72952c2d0a63e6e0afff290a9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:befa9e23-4a72-71e0-e62d-37d757cc8514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.radical_minimalPrimes : I.radical.minimalPrimes = I.minimalPrimes := by
  rw [Ideal.minimalPrimes, Ideal.minimalPrimes]
  ext p
  refine ⟨?_, ?_⟩ <;> rintro ⟨⟨a, ha⟩, b⟩
  · refine ⟨⟨a, a.radical_le_iff.1 ha⟩, ?_⟩
    simp only [Set.mem_setOf_eq, and_imp] at *
    exact fun _ h2 h3 h4 => b h2 (h2.radical_le_iff.2 h3) h4
  · refine ⟨⟨a, a.radical_le_iff.2 ha⟩, ?_⟩
    simp only [Set.mem_setOf_eq, and_imp] at *
    exact fun _ h2 h3 h4 => b h2 (h2.radical_le_iff.1 h3) h4

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8786b92ca55088c8afedda5bfde788ddba190a991fe0fab0f49aae02bfc1b61a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600f9c9264bc1399f2419260d8ef47408d853f19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
