# _root_.Ideal.torsionOf_eq_span_pow_pOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00839496e5c2d9cff32ed8b36766e66e260b12b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4c75043-7107-8193-389f-5c5ecaa7fbe5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32d7fd13-6f30-623e-d0f6-852776176afa",
  "kind": "theorem",
  "lexical_name": "_root_.Ideal.torsionOf_eq_span_pow_pOrder",
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
  "slug": "root-ideal-torsionof-eq-span-pow-porder--3e941327132633680e33e3d2",
  "source": {
    "blob": "d00839496e5c2d9cff32ed8b36766e66e260b12b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e941327132633680e33e3d2fdce9647e1605586d5685953615959e2354c69e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d7fd13-6f30-623e-d0f6-852776176afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Ideal.torsionOf_eq_span_pow_pOrder (x : M) :
    torsionOf R M x = span {p ^ pOrder hM x} := by
  classical
  dsimp only [pOrder]
  rw [← (torsionOf R M x).span_singleton_generator, Ideal.span_singleton_eq_span_singleton, ←
    Associates.mk_eq_mk_iff_associated, Associates.mk_pow]
  have prop :
    (fun n : ℕ => p ^ n • x = 0) = fun n : ℕ =>
      (Associates.mk <| generator <| torsionOf R M x) ∣ Associates.mk p ^ n := by
    ext n; rw [← Associates.mk_pow, Associates.mk_dvd_mk, ← mem_iff_generator_dvd]; rfl
  have := (isTorsion'_powers_iff p).mp hM x; rw [prop] at this
  convert!
    Associates.eq_pow_find_of_dvd_irreducible_pow (Associates.irreducible_mk.mpr hp)
      this.choose_spec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00839496e5c2d9cff32ed8b36766e66e260b12b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
