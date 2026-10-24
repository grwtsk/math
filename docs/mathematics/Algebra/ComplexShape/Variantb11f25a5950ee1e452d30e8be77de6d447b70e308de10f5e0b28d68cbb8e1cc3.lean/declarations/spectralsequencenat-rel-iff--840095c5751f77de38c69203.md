# spectralSequenceNat_rel_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85715a53-e739-a0e8-f596-438a2b521a1e",
  "kind": "lemma",
  "lexical_name": "spectralSequenceNat_rel_iff",
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
  "slug": "spectralsequencenat-rel-iff--840095c5751f77de38c69203",
  "source": {
    "blob": "7c50087b9dbca7fceb3f75ded6eee7bbc73dc869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 50,
    "path": "GRWTSK/Algebra/ComplexShape/Variantb11f25a5950ee1e452d30e8be77de6d447b70e308de10f5e0b28d68cbb8e1cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:840095c5751f77de38c69203daa72dbb6c02b4aaeacb755ccfd6745710fc65c3",
  "verification": {
    "reference": "docs/verification/Algebra/ComplexShape/Variantb11f25a5950ee1e452d30e8be77de6d447b70e308de10f5e0b28d68cbb8e1cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85715a53-e739-a0e8-f596-438a2b521a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectralSequenceNat_rel_iff (u : ℤ × ℤ) (a b : ℕ × ℕ) :
    (spectralSequenceNat u).Rel a b ↔ a.1 + u.1 = b.1 ∧ a.2 + u.2 = b.2 := Iff.rfl

/-- For `l : ℕ` and `u : ℤ × ℤ`, this is the complex shape on `ℤ × Fin l`, which
connects `a` to `b` when the equality `a + u = b` holds in `ℤ × ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ComplexShape/Variantb11f25a5950ee1e452d30e8be77de6d447b70e308de10f5e0b28d68cbb8e1cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ComplexShape/Variantb11f25a5950ee1e452d30e8be77de6d447b70e308de10f5e0b28d68cbb8e1cc3.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c50087b9dbca7fceb3f75ded6eee7bbc73dc869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
