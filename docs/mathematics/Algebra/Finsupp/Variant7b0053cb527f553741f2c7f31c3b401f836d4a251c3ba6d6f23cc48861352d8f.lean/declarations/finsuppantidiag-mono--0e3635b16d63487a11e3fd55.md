# finsuppAntidiag_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:638421ca-0d87-7355-823b-5ec2d8ceb0ed",
  "kind": "theorem",
  "lexical_name": "finsuppAntidiag_mono",
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
  "slug": "finsuppantidiag-mono--0e3635b16d63487a11e3fd55",
  "source": {
    "blob": "8c342e33f3597fec681da8c05134f81130c5fd0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3635b16d63487a11e3fd55d46f8c2fe860e61502eee9bee611b2517b0f2877",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:638421ca-0d87-7355-823b-5ec2d8ceb0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppAntidiag_mono {s t : Finset ι} (h : s ⊆ t) (n : μ) :
    finsuppAntidiag s n ⊆ finsuppAntidiag t n := by
  intro a
  simp_rw [mem_finsuppAntidiag']
  rintro ⟨hsum, hmem⟩
  exact ⟨hsum, hmem.trans h⟩

variable [AddCommMonoid μ'] [HasAntidiagonal μ'] [DecidableEq μ']

set_option backward.isDefEq.respectTransparency false in
-- This should work under the assumption that e is an embedding and an AddHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c342e33f3597fec681da8c05134f81130c5fd0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
