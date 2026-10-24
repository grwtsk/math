# wittStructureInt_existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eed952ff3d28fff79a6870c87ca9421776486fb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0ebdcd0-03b7-f266-9f32-2127dc4991c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:320cfbb4-bcd5-c9ac-a949-e3446909d3d4",
  "kind": "theorem",
  "lexical_name": "wittStructureInt_existsUnique",
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
  "slug": "wittstructureint-existsunique--80f9da6b5a0deb776c440a65",
  "source": {
    "blob": "eed952ff3d28fff79a6870c87ca9421776486fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 317,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f9da6b5a0deb776c440a65df6e2ad3062382eef37b0e952cdba9a4399383fa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320cfbb4-bcd5-c9ac-a949-e3446909d3d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittStructureInt_existsUnique (Φ : MvPolynomial idx ℤ) :
    ∃! φ : ℕ → MvPolynomial (idx × ℕ) ℤ,
      ∀ n : ℕ,
        bind₁ φ (wittPolynomial p ℤ n) = bind₁ (fun i : idx => rename (Prod.mk i) (W_ ℤ n)) Φ :=
  ⟨wittStructureInt p Φ, wittStructureInt_prop _ _, eq_wittStructureInt _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed952ff3d28fff79a6870c87ca9421776486fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
