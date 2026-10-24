# pickLargerRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25c4eb1755fb31d7b1ec039651450f8a958a141317c2409e677ded5b46591753",
  "kind": "def",
  "lexical_name": "pickLargerRing",
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
  "slug": "picklargerring--b96de5945cb726d97bc4f1cc",
  "source": {
    "blob": "ed995bfa0ffc702b8d0ec8411183ad7673672d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 355,
    "path": "GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b96de5945cb726d97bc4f1ccfc841fea646d8579fff60d1fb6cfe1827c562c97",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25c4eb1755fb31d7b1ec039651450f8a958a141317c2409e677ded5b46591753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pickLargerRing (r1 r2 : Σ u : Lean.Level, Q(Type u)) :
    MetaM (Σ u : Lean.Level, Q(Type u)) := do
  let ⟨u1, R1⟩ := r1
  let ⟨u2, R2⟩ := r2
  if ← withReducible <| isDefEq R1 R2 then
    return r1
  try
    let _i1 ← synthInstanceQ q(CommSemiring $R1)
    let _i2 ← synthInstanceQ q(Semiring $R2)
    let _i3 ← synthInstanceQ q(Algebra $R1 $R2)
    return r2
  catch _ => try
    let _i1 ← synthInstanceQ q(CommSemiring $R2)
    let _i2 ← synthInstanceQ q(Semiring $R1)
    let _i3 ← synthInstanceQ q(Algebra $R2 $R1)
    return r1
  catch _ =>
    return r1

variable {u v : Lean.Level} {R : Q(Type u)} {A : Q(Type v)} {sR : Q(CommSemiring $R)}
  {sA : Q(CommSemiring $A)} (sAlg : Q(Algebra $R $A)) (a : Q($A)) (b : Q($A))

/-- Infer from the expression what base ring the normalization should use.
Finds all scalar rings in the expression and picks the 'larger' one in the sense that
it is an algebra over the smaller rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed995bfa0ffc702b8d0ec8411183ad7673672d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
