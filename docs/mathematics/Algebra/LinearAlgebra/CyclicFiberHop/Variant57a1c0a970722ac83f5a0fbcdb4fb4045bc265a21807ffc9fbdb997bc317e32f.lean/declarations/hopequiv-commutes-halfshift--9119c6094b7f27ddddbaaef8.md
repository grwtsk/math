# hopEquiv_commutes_halfShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03dc33b9273d4e9dfd0e528d4746248e8a08f31e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48e8556a-e561-32ef-2ec3-5130aec11320",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89bdfe00-02dc-1bb6-919b-1830940b39d6",
  "kind": "theorem",
  "lexical_name": "hopEquiv_commutes_halfShift",
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
  "slug": "hopequiv-commutes-halfshift--9119c6094b7f27ddddbaaef8",
  "source": {
    "blob": "03dc33b9273d4e9dfd0e528d4746248e8a08f31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9119c6094b7f27ddddbaaef8551f3392bcb962538d7fb3f0888663c6d0265597",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89bdfe00-02dc-1bb6-919b-1830940b39d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hopEquiv_commutes_halfShift (system : StepSystem h)
    (value : Section3 h) :
    hopEquiv system (halfShiftEquiv h value) =
      halfShiftEquiv h (hopEquiv system value) := by
  funext phase
  change
    system.step (predecessor h phase)
        (value (antipode h (predecessor h phase))) =
      system.step (predecessor h (antipode h phase))
        (value (predecessor h (antipode h phase)))
  rw [predecessor_commutes_antipode, system.half_compatible]

/-- Antipodal sections negate their three-coordinate fiber after a half turn. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03dc33b9273d4e9dfd0e528d4746248e8a08f31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
