# findX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ee74d71493fe2afc8910212610fe10cb307938d733737b470341dbbec959439",
  "kind": "def",
  "lexical_name": "findX",
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
  "slug": "findx--13dc3b36d3fc3f0730856dad",
  "source": {
    "blob": "4a5ee9f02fca62fb93233ac9809c6678d3a2fe64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13dc3b36d3fc3f0730856dad888e24bc604422b9925fee78b725a1205a60e445",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ee74d71493fe2afc8910212610fe10cb307938d733737b470341dbbec959439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def findX : { n // p n ∧ ∀ m : ℕ+, m < n → ¬p m } := by
  have : ∃ (n' : ℕ) (n : ℕ+) (_ : n' = n), p n := Exists.elim h fun n hn => ⟨n, n, rfl, hn⟩
  have n := Nat.findX this
  refine ⟨⟨n, ?_⟩, ?_, fun m hm pm => ?_⟩
  · obtain ⟨n', hn', -⟩ := n.prop.1
    rw [hn']
    exact n'.prop
  · obtain ⟨n', hn', pn'⟩ := n.prop.1
    simpa [hn', Subtype.coe_eta] using pn'
  · exact n.prop.2 m hm ⟨m, rfl, pm⟩

/-- If `p` is a (decidable) predicate on `ℕ+` and `hp : ∃ (n : ℕ+), p n` is a proof that
there exists some positive natural number satisfying `p`, then `PNat.find hp` is the
smallest positive natural number satisfying `p`. Note that `PNat.find` is protected,
meaning that you can't just write `find`, even if the `PNat` namespace is open.

The API for `PNat.find` is:

* `PNat.find_spec` is the proof that `PNat.find hp` satisfies `p`.
* `PNat.find_min` is the proof that if `m < PNat.find hp` then `m` does not satisfy `p`.
* `PNat.find_min'` is the proof that if `m` does satisfy `p` then `PNat.find hp ≤ m`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5ee9f02fca62fb93233ac9809c6678d3a2fe64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
