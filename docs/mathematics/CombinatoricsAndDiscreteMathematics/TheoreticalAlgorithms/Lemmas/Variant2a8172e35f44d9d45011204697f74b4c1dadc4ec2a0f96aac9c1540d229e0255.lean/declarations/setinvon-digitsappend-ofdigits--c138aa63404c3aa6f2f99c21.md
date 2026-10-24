# setInvOn_digitsAppend_ofDigits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad76abb-01e9-585a-c01d-b451b0689e32",
  "kind": "theorem",
  "lexical_name": "setInvOn_digitsAppend_ofDigits",
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
  "slug": "setinvon-digitsappend-ofdigits--c138aa63404c3aa6f2f99c21",
  "source": {
    "blob": "fed898353b2b5c6cad438795bcd5217b7cae5e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c138aa63404c3aa6f2f99c21b6522b687f5d8b84ba3a784c659bb6b1fe4d16a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad76abb-01e9-585a-c01d-b451b0689e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setInvOn_digitsAppend_ofDigits {b : ℕ} (hb : 1 < b) (l : ℕ) :
    Set.InvOn (digitsAppend b l) (ofDigits b) {L : List ℕ | L.length = l ∧ ∀ x ∈ L, x < b}
      {n | n < b ^ l} := by
  refine ⟨fun L hL ↦ ?_, fun _ _ ↦ by rw [digitsAppend, ofDigits_append_replicate_zero,
    ofDigits_digits]⟩
  refine (injOn_ofDigits hb l) ⟨?_, ?_⟩ hL
    (by rw [digitsAppend, ofDigits_append_replicate_zero, ofDigits_digits])
  · rw [length_digitsAppend hb _ (mapsTo_ofDigits hb _ hL)]
  · exact fun x hx ↦ lt_of_mem_digitsAppend hb l x hx

/--
The map `L ↦ Nat.ofDigits b L` is bijection between the set of lists of natural integers of
length `l` with coefficients `< b` to the set of natural integers `< b ^ l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed898353b2b5c6cad438795bcd5217b7cae5e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
