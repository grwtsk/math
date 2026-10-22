# Lag-sensitive four-distinct support

Issue: #913  
Parent: draft PR #912 at `0734e455f24706489205e4e0053fdc68834b270f`.

At fixed lag `ell`, the endpoint condition is
```text
c + ell < b+1.
```
Hence the valid centers are exactly
```text
range (b+1-ell)
```
and their number is `b+1-ell`.

Combining this exact center count with the previous safe bound of `(b+1)^2` admissible distinct shift pairs per center gives
```text
rawSupport(b,ell) <= (b+1-ell)*(b+1)^2.
```

For winding lag `ell=z*d^2`:
```text
rawSupport(b,d,z)
 <= (b+1-z*d^2)*(b+1)^2.
```

The source also defines the deterministic sum of these ceilings over the exact positive winding range.

No cancellation estimate is asserted. The improvement is purely combinatorial: large winding lags have fewer available centers before any Möbius cancellation is used.
