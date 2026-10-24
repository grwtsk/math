# exists_retraction_subtype_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2195d6fc-6f11-0c83-19e1-5f8272c46f88",
  "kind": "theorem",
  "lexical_name": "exists_retraction_subtype_of_isClosed",
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
  "slug": "exists-retraction-subtype-of-isclosed--bc608aca47ca9c3bbb5c4a57",
  "source": {
    "blob": "e2bda182d92ad616fe5d318db1ee0819ec801897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 689,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc608aca47ca9c3bbb5c4a57e59c686b0bb1e075b2dd03e7aabf397c2c147015",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2195d6fc-6f11-0c83-19e1-5f8272c46f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_retraction_subtype_of_isClosed {s : Set (∀ n, E n)} (hs : IsClosed s)
    (hne : s.Nonempty) :
    ∃ f : (∀ n, E n) → s, (∀ x : s, f x = x) ∧ Surjective f ∧ Continuous f := by
  obtain ⟨f, fs, rfl, f_cont⟩ :
    ∃ f : (∀ n, E n) → ∀ n, E n, (∀ x ∈ s, f x = x) ∧ range f = s ∧ Continuous f :=
    exists_retraction_of_isClosed hs hne
  have A : ∀ x : range f, rangeFactorization f x = x := fun x ↦ Subtype.ext <| fs x x.2
  exact ⟨rangeFactorization f, A, fun x => ⟨x, A x⟩, f_cont.subtype_mk _⟩

end PiNat

open PiNat

/-- Any nonempty complete second countable metric space is the continuous image of the
fundamental space `ℕ → ℕ`. For a version of this theorem in the context of Polish spaces, see
`exists_nat_nat_continuous_surjective_of_polishSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bda182d92ad616fe5d318db1ee0819ec801897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
