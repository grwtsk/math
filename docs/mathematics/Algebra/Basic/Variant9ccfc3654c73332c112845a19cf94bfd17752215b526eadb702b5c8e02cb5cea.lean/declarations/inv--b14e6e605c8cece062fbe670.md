# inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ef1a2e4d8f44090f9b155e185b2f10a03836b340905484e32819d4b6048c8db",
  "kind": "def",
  "lexical_name": "inv",
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
  "slug": "inv--b14e6e605c8cece062fbe670",
  "source": {
    "blob": "5d23c7fb20774850f2005a1a966e6e56b601f87a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 456,
    "path": "GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b14e6e605c8cece062fbe670758863a400b9aabcd1719a1c343694abe3d425a1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ef1a2e4d8f44090f9b155e185b2f10a03836b340905484e32819d4b6048c8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inv {u : Lean.Level} {α : Q(Type u)} (_sα : Q(CommSemiring $α))
    {a : Q($α)} (czα : Option Q(CharZero $α)) (_sfα : Q(Semifield $α)) (za : RatCoeff a) :
    AtomM (Option (Result RatCoeff q($a⁻¹))) := do
  match (← (Lean.observing? <| za.toResult.inv _ czα :)) with
  | some res =>
    let ⟨_, vc, pc⟩ ← RatCoeff.ofResult res
    return some ⟨_, vc, q($pc)⟩
  | none => return none

/-- Try to evaluate an expression as a rational constant using `norm_num`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d23c7fb20774850f2005a1a966e6e56b601f87a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
