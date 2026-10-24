# Ring.perfectionSubsemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac8533438b341dbb846bea8b382ebd8e5c72b5e68a71c1c28e27ae4e0bcf392f",
  "kind": "def",
  "lexical_name": "Ring.perfectionSubsemiring",
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
  "slug": "ring-perfectionsubsemiring--364b268407b406c09aa5e7eb",
  "source": {
    "blob": "89683c38081e135a2c85f39891c22b3fefb3abe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:364b268407b406c09aa5e7ebdd2c726004b939a69e88c339116accaae747a5d8",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac8533438b341dbb846bea8b382ebd8e5c72b5e68a71c1c28e27ae4e0bcf392f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ring.perfectionSubsemiring (R : Type u₁) [CommSemiring R] (p : ℕ) [hp : Fact p.Prime]
    [CharP R p] : Subsemiring (ℕ → R) :=
  { Monoid.perfection R p with
    zero_mem' := fun _ => zero_pow <| hp.1.pos
    add_mem' := fun hf hg n => (frobenius_add R p _ _).trans <| congr_arg₂ _ (hf n) (hg n) }
#align ring.perfection_subsemiring Ring.perfectionSubsemiring

/-- The perfection of a ring `R` with characteristic `p`, as a subring,
defined to be the projective limit of `R` using the Frobenius maps `R → R`
indexed by the natural numbers, implemented as `{ f : ℕ → R | ∀ n, f (n + 1) ^ p = f n }`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89683c38081e135a2c85f39891c22b3fefb3abe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
