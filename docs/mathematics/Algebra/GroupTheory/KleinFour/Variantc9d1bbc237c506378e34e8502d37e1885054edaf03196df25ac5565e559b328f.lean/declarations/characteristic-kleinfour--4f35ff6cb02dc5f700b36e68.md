# characteristic_kleinFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3179371-ae93-ec49-4691-ee76d8ff3467",
  "kind": "theorem",
  "lexical_name": "characteristic_kleinFour",
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
  "slug": "characteristic-kleinfour--4f35ff6cb02dc5f700b36e68",
  "source": {
    "blob": "ccb212a2cef971d060984bffbaef8585dada3993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f35ff6cb02dc5f700b36e685c7c79f9cef23c726320d82cbc7f9c7875bbeebf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3179371-ae93-ec49-4691-ee76d8ff3467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_kleinFour (hα4 : Nat.card α = 4) :
    (kleinFour α).Characteristic := by
  obtain ⟨S : Sylow 2 (alternatingGroup α)⟩ := Sylow.nonempty (G := alternatingGroup α)
  have _ := subsingleton_two_sylow hα4
  rw [← two_sylow_eq_kleinFour_of_card_eq_four hα4 S]
  exact Sylow.characteristic_of_subsingleton _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb212a2cef971d060984bffbaef8585dada3993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
