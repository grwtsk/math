# qNF.liftToBase?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b15c6de73c1b1daa588fda1e1ce9a44ccd9b8be270e404a5b2d853b58e0d018",
  "kind": "def",
  "lexical_name": "qNF.liftToBase?",
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
  "slug": "qnf-lifttobase--e84f398463b06a1add76822c",
  "source": {
    "blob": "0a0bfd2ee6a0415b489d32e3c39c7794614bcd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 656,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e84f398463b06a1add76822c99c0599a8844adf54e32e2528a980ba6c7e76d7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b15c6de73c1b1daa588fda1e1ce9a44ccd9b8be270e404a5b2d853b58e0d018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def qNF.liftToBase? {M : Q(Type v)} {R : Q(Type u)} (iM : Q(AddCommMonoid $M))
    (iR : Q(Semiring $R)) (iRM : Q(Module $R $M)) (base : Σ w : Level, Q(Type w))
    (l : qNF R M) :
    MetaM (Option (Σ w : Level, Σ B : Q(Type w), Σ iB : Q(Semiring $B),
      Σ _ : Q(@Module $B $M $iB $iM), Σ l' : qNF B M,
      Q(NF.eval $(l'.toNF) = NF.eval $(l.toNF)))) := do
  let ⟨w, B⟩ := base
  let some iB ← synthInstanceQ? q(Semiring.{w} $B) | return none
  let some iBM ← synthInstanceQ? q(Module $B $M) | return none
  try
    let ⟨w', B', iB', iBM', ⟨l', pfL⟩, _, _⟩ ← qNF.matchRings iRM iB iBM l [] q(0) q(0)
    return some ⟨w', B', iB', iBM', l', pfL⟩
  catch _ => return none

/-- Normalize an expression in an `AddCommMonoid` into the form `c₁ • x₁ + (c₂ • x₂ + ... + 0)`
with normalized scalars by chaining `parse` and `qNF.rebuild`.

When `base?` is provided, `eval` will also attempt to lift the coefficients into `base?`. If `base?`
is not a semiring acting on `M` or when `qNF.matchRings` cannot relate the parsed ring to `base?`
then the result falls back to the parsed ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0bfd2ee6a0415b489d32e3c39c7794614bcd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
