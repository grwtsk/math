# mul_induction_on'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f35d7f04-8411-416b-0147-1f9bea5f30de",
  "kind": "theorem",
  "lexical_name": "mul_induction_on'",
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
  "slug": "mul-induction-on--dc621f93636850b6e251bb23",
  "source": {
    "blob": "84a4d40807a9515c2d6310cb87368777e3201ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 195,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc621f93636850b6e251bb2312d3e2b3636881246752fc38acbb5d5b8981ec23",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f35d7f04-8411-416b-0147-1f9bea5f30de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_induction_on' {C : ∀ r, r ∈ M * N → Prop}
    (hm : ∀ m (_ : m ∈ M), ∀ n (_ : n ∈ N), C (m * n) (mul_mem_mul ‹_› ‹_›))
    (ha : ∀ x hx y hy, C x hx → C y hy → C (x + y) (add_mem ‹_› ‹_›)) {r : A} (hr : r ∈ M * N) :
    C r hr := by
  refine' Exists.elim _ fun (hr : r ∈ M * N) (hc : C r hr) => hc
  exact
    Submodule.mul_induction_on hr (fun x hx y hy => ⟨_, hm _ hx _ hy⟩) fun x y ⟨_, hx⟩ ⟨_, hy⟩ =>
      ⟨_, ha _ _ _ _ hx hy⟩
#align submodule.mul_induction_on' Submodule.mul_induction_on'

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a4d40807a9515c2d6310cb87368777e3201ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
