# evalLucasLehmerTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04a36662eb4809c0a59d688fab4f9ad6b94d3b1044a7c94d70fd07b53de7b75d",
  "kind": "def",
  "lexical_name": "evalLucasLehmerTest",
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
  "slug": "evallucaslehmertest--6224f1a45ce4003d950278e2",
  "source": {
    "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 602,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6224f1a45ce4003d950278e21fb674f5a94f1f08aae75d6a9eb4ccd98efb5d50",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04a36662eb4809c0a59d688fab4f9ad6b94d3b1044a7c94d70fd07b53de7b75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def evalLucasLehmerTest : NormNumExt where eval {u α} e := do
  let .app _ (p : Q(ℕ)) ← Meta.whnfR e | failure
  let ⟨ep, hp⟩ ← deriveNat p _
  let np := ep.natLit!
  unless 1 < np do
    failure
  haveI' h1ltp : Nat.blt 1 $ep =Q true := ⟨⟩
  if sMod' (2 ^ np - 1) (np - 2) = 0 then
    haveI' hs : sMod' (2 ^ $ep - 1) ($ep - 2) =Q 0 := ⟨⟩
    have pf : Q(LucasLehmerTest $ep) := q(testTrueHelper $ep $h1ltp $hs)
    have pf' : Q(LucasLehmerTest $p) := q(isNat_lucasLehmerTest $hp $pf)
    return .isTrue pf'
  else
    haveI' hs : Nat.ble 1 (sMod' (2 ^ $ep - 1) ($ep - 2)) =Q true := ⟨⟩
    have pf : Q(¬ LucasLehmerTest $ep) := q(testFalseHelper $ep $h1ltp $hs)
    have pf' : Q(¬ LucasLehmerTest $p) := q(isNat_not_lucasLehmerTest $hp $pf)
    return .isFalse pf'

end norm_num_ext

end LucasLehmer

/-!
This implementation works successfully to prove `(2^4423 - 1).Prime`,
and all the Mersenne primes up to this point appear in [Archive/Examples/MersennePrimes.lean].
These can be calculated nearly instantly, and `(2^9689 - 1).Prime` only fails due to deep
recursion.

(Note by kmill: the following notes were for the Lean 3 version. They seem like they could still
be useful, so I'm leaving them here.)

There's still low hanging fruit available to do faster computations
based on the formula
```
n ≡ (n % 2^p) + (n / 2^p) [MOD 2^p - 1]
```
and the fact that `% 2^p` and `/ 2^p` can be very efficient on the binary representation.
Someone should do this, too!
-/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
