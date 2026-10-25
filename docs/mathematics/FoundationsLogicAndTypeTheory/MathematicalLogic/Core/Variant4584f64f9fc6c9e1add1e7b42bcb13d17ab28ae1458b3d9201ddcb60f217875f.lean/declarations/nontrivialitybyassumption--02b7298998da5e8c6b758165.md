# nontrivialityByAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a72b003f65e1880553ad978f93b49b34b065739f05d01b61a9a1962c60654ad5",
  "kind": "def",
  "lexical_name": "nontrivialityByAssumption",
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
  "slug": "nontrivialitybyassumption--02b7298998da5e8c6b758165",
  "source": {
    "blob": "c23d212420408006ca1428fd69b4c72d33de3df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02b7298998da5e8c6b75816590ec28c1f846cf85e97c8527f923a99094cdb9d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a72b003f65e1880553ad978f93b49b34b065739f05d01b61a9a1962c60654ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def nontrivialityByAssumption (g : MVarId) : MetaM Unit := do
  g.inferInstance <|> do
    _ ← processSyntax {maxDepth := 6}
      false false [← `(nontrivial_of_ne), ← `(nontrivial_of_lt)] [] #[] [g]

/-- `nontriviality α` generates a proof of `Nontrivial α` and adds this as a hypothesis.

The tactic first tries to find a proof of `Nontrivial α` using instance synthesis.
If this fails, it will derive this proof using `a < b`, `a ≠ b` or `a > b` hypotheses in the
local context. Otherwise it will perform a case split on `Subsingleton α ∨ Nontrivial α`, and
attempt to prove `Subsingleton α` implies the main goal using `simp [nontriviality]`.
If the `Subsingleton` goal cannot be closed automatically, `nontriviality` fails.

This tactic is extensible: tag a lemma with `@[nontriviality]` to use it in the `simp` set for the
`Subsingleton` case. All `@[simp]` lemmas are automatically used too.

* `nontriviality` (without the argument `α`) infers the type from the main goal,
  if the goal is an (in)equality.
* `nontriviality using h₁, h₂, ..., hₙ` uses `h₁`, ..., `hₙ` as extra arguments to `simp`
  in the `Subsingleton` case. This supports the typical `simp` argument syntax:
  `nontriviality using ← h` rewrites right-to-left with this argument;
  `nontriviality using -h` removes a lemma from the default `simp` set for this tactic invocation.
  `nontriviality using *` adds all local hypotheses to the `simp` set.

Examples:
```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  assumption

example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  apply mul_comm

example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : (2 : ℕ) ∣ 4 := by
  nontriviality R -- there is now a `Nontrivial R` hypothesis available.
  dec_trivial

def myeq {α : Type} (a b : α) : Prop := a = b

example {α : Type} (a b : α) (h : a = b) : myeq a b := by
  success_if_fail nontriviality α -- Fails
  nontriviality α using myeq -- There is now a `Nontrivial α` hypothesis available
  assumption
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c23d212420408006ca1428fd69b4c72d33de3df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
